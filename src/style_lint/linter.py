import re

RULES = {
    "heading_case": re.compile(r"^#{1,6}\s+[A-Z]"),
    "trailing_space": re.compile(r"[ \t]+$", re.MULTILINE),
}


def lint(text):
    issues = []
    for name, pattern in RULES.items():
        for m in pattern.finditer(text):
            issues.append({"rule": name, "line": text[:m.start()].count("\n") + 1})
    return issues
