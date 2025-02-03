import os

from fabric.utils import get_relative_path

from shared.widget_container import ButtonWidget
from utils.functions import copy_theme
from utils.widget_settings import BarConfig
from utils.widget_utils import text_icon


class ThemeSwitcherWidget(ButtonWidget):
    """A widget to switch themes."""

    def __init__(self, widget_config: BarConfig, bar, **kwargs):
        super().__init__(name="theme_switcher", **kwargs)

        self.config = widget_config["theme_switcher"]

        theme_files = os.listdir(get_relative_path("../styles/themes"))

        # Remove the '.scss' part from each string in the list
        self.themes_list = [style.replace(".scss", "") for style in theme_files]

        self.current_theme = self.themes_list[0]

        self.children = text_icon(
            self.config["icon"],
            self.config["icon_size"],
            props={"style_classes": "panel-text-icon"},
        )

        self.connect("clicked", self.cycle_themes)

    def cycle_themes(self, *_):
        """Cycle through the themes."""
        copy_theme(self.current_theme)
        self.current_theme = self.themes_list[
            (self.themes_list.index(self.current_theme) + 1) % len(self.themes_list)
        ]
