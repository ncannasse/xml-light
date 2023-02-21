let () =
  match Sys.argv |> Array.to_list |> List.tl with
    | [dtd; xml; main] -> (
        try
          let dtd = Dtd.parse_file dtd in
          let checked = Dtd.check dtd in
          let xml = Xml.parse_file xml in
          let xml = Dtd.prove checked main xml in
          print_endline (Xml.to_string xml)
        with Dtd.Check_error e -> print_endline (Dtd.check_error e))
    | _ ->
        print_endline "Usage: ./check_dtd.exe file.dtd file.xml entrypoint";
        exit 1
