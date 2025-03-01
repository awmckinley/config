{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # high-level dynamically-typed programming language
    (python312.withPackages (
      ps: with ps; [
        # implementation of the Debug Adapter Protocol for Python
        debugpy

        # download and publish models and other files on the huggingface.co hub
        huggingface-hub

        # Python library to read/write Excel 2010 xlsx/xlsm files
        openpyxl

        # powerful data structures for data analysis, time series, and statistics
        pandas
        pandas-stubs
      ]
    ))
  ];
}
