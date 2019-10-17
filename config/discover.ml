module C = Configurator.V1

let () =
C.main ~name:"bz2" (fun c ->

let stale_bzip2 : C.Pkg_config.package_conf = {
 libs = [ "-lbz2" ];
 cflags = []
} in

let conf =
  match C.Pkg_config.get c with
  | None -> C.die "'pkg-config' missing"
  | Some pc ->
    match (C.Pkg_config.query pc ~package:"bzip2") with
      | None -> stale_bzip2
      | Some deps -> deps
  in

  C.Flags.write_sexp "c_flags.sexp"         conf.cflags;
  C.Flags.write_sexp "c_library_flags.sexp" conf.libs)
