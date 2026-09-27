"""Theme and lint rule configuration."""

from style_profile import get_rules as _profile_get

_DEFAULTS = _profile_get("default")


def get_rules():
    return dict(_DEFAULTS)
