#import "shared.typ": *
// The default template for blog posts.
#let main = shared-template.with(kind: "post", lang: "en")
// shortcut for English blog posts
#let main-en = main
// shortcut for Chinese blog posts
#let main-zh = main.with(lang: "zh", region: "cn")

#let zebraw = zebraw.with(inset: (top: 3pt, bottom: 3pt))

#let msk = "■";
#let HL(s) = text(size: 9pt)[*#s*]
#let tab = text[#h(8pt)]
#let endl = linebreak()
#let prod = $product$
