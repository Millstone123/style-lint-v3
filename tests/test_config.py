from style_lint import get_rules


def test_rules():
    rules = get_rules()
    assert rules["theme"] == "default"
    assert isinstance(rules["characters"], int)
