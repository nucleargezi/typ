#import "@preview/shiroa:0.2.3": templates, book-sys
#import templates: *

#let is-md-target = book-sys.target == "md"
#let sys-is-html-target = book-sys.sys-is-html-target

// Theme (Colors)
#let light-theme = book-theme-from(
  toml("theme-style.toml"),
  xml: it => xml(it),
  target: if sys-is-html-target {
    "web-light"
  } else {
    "pdf"
  },
)
#let default-theme = light-theme

#let theme-frame(render, tag: "div", class: none, theme-tag: none) = if is-md-target {
  show: html.elem.with(tag)
  render(light-theme)
} else if sys-is-html-target {
  if theme-tag == none {
    theme-tag = tag
  }
  html.elem(
    tag,
    attrs: (class: "code-image" + if class != none { " " + class }),
    render(light-theme),
  )
} else {
  render(default-theme)
}
