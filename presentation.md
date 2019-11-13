---
author: Joseph Weston
title: Property-based testing with Hypothesis
date: today
---

# Testing is good

# Different approaches to testing

# Property-based testing

# Hypothesis

# A taxonomy of property-based tests

Stolen from [this youtube video](https://www.youtube.com/watch?v=mg5BeeYGjY0)

### Roundtrip

`f⁻¹(f(x)) == x`

```python
import json

@given(json_objects())
def test_json_roundtrip(x):
    assert json.loads(json.dumps(x)) == x
```

### Idempotence

`f(f(x)) == f(x)`

```python
from string import printable

@given(st.text(printable))
def test_lowercase_idempotent(text):
    assert text.lower().lower() == text.lower()
```

### Invariance

`g(f(x)) == g(x)`

```python
@given(st.randoms(), st.lists(st.integers()))
def test_set_independent_of_order(rand, l):
    first_set = set(l)
    rand.shuffle(l)
    second_set = set(l)
    assert first_set == second_set
```

### Verification

`P(f(x)) is True`

```python
from string import ascii_lowercase

@given(st.text(ascii_lowercase + "\t"))
def test_no_tabs_after_expandtabs(text):
    assert "\t" not in text.expandtabs()
```

### Oracle

`f(x) == g(x)`

```python
@given(st.lists(st.integers()))
def test_sort(l):
    assert my_sort(l) == sorted(l)
```
