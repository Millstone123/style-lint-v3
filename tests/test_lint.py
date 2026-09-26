from style_lint import lint

def test_clean():
    assert lint("body { color: red }") == []
