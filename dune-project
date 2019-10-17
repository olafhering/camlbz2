(lang dune 1.10)

(generate_opam_files true)

(license "LGPL-2.1-or-later WITH OCaml-LGPL-linking-exception")

(authors
  "Olivier Andrieu <oandrieu@gmail.com>, Nicolas George <nicolas.george@ens.fr>")

(maintainers
  "Stefano Zacchiroli <zack@upsilon.cc>, Olivier Andrieu <oandrieu@gmail.com>")

(homepage "http://camlbz2.forge.ocamlcore.org/")

(bug_reports "http://forge.ocamlcore.org/tracker/?atid=338&group_id=63")

(package
 (name bz2)
 (synopsis "OCaml bindings for bzip2")
 (description
   "This is CamlBZ2, OCaml bindings for the libbz2 (AKA, bzip2) (de)compression library.")
 (depends "dune.configurator"))
