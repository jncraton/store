def test_index_has_title_and_heading():
    with open('index.html', 'r', encoding='utf-8') as f:
        html = f.read()
    assert '<title>' in html.lower() or '<title ' in html.lower()
    assert '<h1' in html.lower() or '<header' in html.lower()
