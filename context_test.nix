{ lib, buildPythonApplication, fusepy }:

buildPythonApplication rec {
  pname = "context_test";
  version = "0.1.0";
  format = "setuptools";

  src = ./.;

  propagatedBuildInputs = [ fusepy ];

  pythonImportsCheck = [ "context_test" ];
}
