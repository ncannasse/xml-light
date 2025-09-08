(lang dune 3.0)
(name xml-light)

(generate_opam_files true)

(authors "Nicolas Cannasse <ncannasse@gmail.com>")
(maintainers
 "Nicolas Cannasse <ncannasse@gmail.com>"
 "Hugo Heuzard <hugo.heuzard@nomadic-labs.com>")
(source (github ncannasse/xml-light))
(license "LGPL-2.1-or-later WITH OCaml-LGPL-linking-exception")

(package
 (name xml-light)
 (synopsis "Xml-Light is a minimal XML parser & printer for OCaml")
 (description "It provide functions to parse an XML document into an OCaml data structure, work with it, and print it back to an XML document. It support also DTD parsing and checking, and is entirely written in OCaml, hence it does not require any additional C library.")
 (depends
  (ocaml (> "4.08"))))
