with (import <nixpkgs>{});

let
  app_name = "json2yaml";
  app_version = "1.0";
in {
  ctrl_email = python37Packages.buildPythonPackage rec {
    name = "${app_name}";
    version = "${app_version}";

    src = fetchTarball("https://github.com/GuilloteauQ/json2yaml/tarball/master");
    # src = ./.;
    propagatedBuildInputs = with python37Packages; [
      pyaml
    ];

    doCheck = false;

    postInstall = ''
      cp -r app/ $out
    '';
  };
}
