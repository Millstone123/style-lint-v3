import os, sys
sys.path.insert(0, os.path.join(os.path.dirname(__file__), "..", "src"))
from style_lint.linter import lint

def test_clean():
    assert lint("# Hello\n") == []
