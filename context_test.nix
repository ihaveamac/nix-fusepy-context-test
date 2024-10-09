{ lib, stdenv, buildPythonApplication, fusepy }:

buildPythonApplication rec {
  pname = "context_test";
  version = "0.1.0";
  format = "setuptools";

  src = ./.;

  #propagatedBuildInputs = [ fusepy ];
  
  makeWrapperArgs = lib.optional (!stdenv.isDarwin) [ "--prefix PYTHONPATH : ${fusepy}/${fusepy.pythonModule.sitePackages}" ];

  pythonImportsCheck = [ "context_test" ];
}
