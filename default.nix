with (import <nixpkgs>{});

let
  app_name = "json2yaml";
  app_version = "1.0";
in {
  ctrl_email = python37Packages.buildPythonPackage rec {
    name = "${app_name}";
    version = "${app_version}";

    # src = fetchTarball("https://github.com/GuilloteauQ/json2yaml/tarball/master");
    src = fetchFromGitHub {
      owner = "GuilloteauQ";
      repo = "json2yaml";
      rev = "5de4bc4b8aea55395db362f51238be63c7ee9a26";
      sha256 = "001rapmzp08314c4y9birmfi6njgyvn7f95735qrd0443kfwhd19";
    };
    # src = ./.;
    propagatedBuildInputs = with python37Packages; [
      setuptools
      pyaml
    ];

    doCheck = false;

    postInstall = ''
      cp -r app/ $out
    '';
  };
}
