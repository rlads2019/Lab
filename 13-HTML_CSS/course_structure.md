- CS50 lecture 0 order
    1. (HTML: basic introduction) `hello.html`
    2. `headings.html`: `h1` to `h6`
        - browser: View page source
    3. `lists.html`
        - html nesting
        - `ul`
        - `ol`: 不用自己加數字
            - insert another `li`
    4. `image0.html`
        - no end tag
        - attribute: additional info
        - `image1.html`
            - optional attributes (`width`, `height`)
    5. (skip)...
    6. Document Object Model
    7. (CSS: basic introduction) `style0.html`
        - `p` tag: for paragraph
        - attribute: `style`
            - break down into 2 parts
                - two css properties
        - show in browser 
            1. delete style
            2. change color
                - name, rgb (html color picker)
    8. CSS clutters as too many `style` attr are added --> `style1.html`
        - style applies to all `h1`
    9. CSS styling
        - repeated -> `ul, ol`
    10. id, class: identifying HTML elements
        - `div_span.html`
    11. GitHub Pages
        - Create new repo

- CS50 lecture 1 CSS order
    1. Links
    2. CSS selector
        - review `,`: `h1, h2 {}` (`multiple.html`)
    3. `descendant.html` --> `child.html`
    4. `attribute.html`


- HTML
    - structure: `html`, `head`, `body`
        - `head`: metadata
            - `<meta charset="UTF-8">`
            - `title`
        - `body`
            - `h1`, `p`, `a`, `img`(non-closing)
            - `ul`, `ol`, `li`
            - Sections: `div`
    - Document object model

- CSS
    - `style="..."` -> separate style from structure
    - CSS selectors
        - tag selector

            ```css
            h1 {
                font-size: 20px;
                color: green;
            }

            ul {
                color: purple;
            }
            ```
        - decendants

            ```css
            ul li {
                color: purple
            }

            ul > ol {
            }
            ```
        - class & id
