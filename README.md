# Xml-Light :

[![build](https://github.com/ncannasse/xml-light/actions/workflows/build.yml/badge.svg)](https://github.com/ncannasse/xml-light/actions/workflows/build.yml)

  Xml Light is a minimal Xml parser & printer for OCaml.
  It provide few functions to parse a basic Xml document into
  an OCaml data structure and to print back the data structures
  to an Xml document.

  Xml Light has also support for DTD (Document Type Definition).

## Install

```
  dune build
  dune install
```

## Usage

simple samples :


### parse / print an xml string

```ocaml
  let x = Xml.parse_string "<a href='url'>TEXT<begin/><end/></a>" in
  Printf.printf "XML formated = \n%s" (Xml.to_string_fmt x);
```

### load an xml and a dtd , prove and print

```ocaml
  let x = Xml.parse_file "myfile.xml" in
  let dtd = Dtd.parse_file "myfile.dtd" in
  let x = Dtd.prove (Dtd.check dtd) "start" x in
  print_endline (Xml.to_string x)
```

## Documentation

HTML documentation can be generated with ocamldoc :

```
  dune build @doc
```

You can also directly browse the MLI files to read it.

## Licence

Xml Light is distributed under the terms of the GNU Library General
Public License, with the special exception on linking described
below. (This is the OCaml library licence.)

As a special exception to the GNU Library General Public License, you
may link, statically or dynamically, a "work that uses the Library"
with a publicly distributed version of the Library to produce an
executable file containing portions of the Library, and distribute
that executable file under terms of your choice, without any of the
additional requirements listed in clause 6 of the GNU Library General
Public License. By "a publicly distributed version of the Library", we
mean either the unmodified Library as distributed by INRIA, or a
modified version of the Library that is distributed under the
conditions defined in clause 3 of the GNU Library General Public
License. This exception does not however invalidate any other reasons
why the executable file might be covered by the GNU Library General
Public License.

## Credits

(c)2003-2005 Nicolas Cannasse (ncannasse@motion-twin.com)

(c)2003-2005 Motion-Twin

Some parts of this code source has an additionnal copyright to Jacques Garrigue
