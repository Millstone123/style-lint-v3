"""Style lint engine using shared team profiles."""
from style_profile import get_rules

def lint(css, profile="default"):
    rules = get_rules(profile)
    return [r["message"] for r in rules if r["pattern"] in css]

def main():
    import sys
    if len(sys.argv) < 2:
        print("Usage: style-lint <file.css>")
        raise SystemExit(1)
    with open(sys.argv[2]) as f:
        css = f.read()
    issues = lint(css)
    if issues:
        for i in issues:
            print(i)
        raise SystemExit(1)
    print("No issues found.")
