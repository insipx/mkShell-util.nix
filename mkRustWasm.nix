# make a shell with an environment for rust and wasm dev
{ twiggy
, binaryen
  #, wasm-pack
, wabt
, geckodriver
  # , wasm-bindgen-cli
, mkShell
, extraInputs ? { }
, ...
}: (mkShell
  {
    buildInputs = [
      twiggy
      binaryen
      wabt
      geckodriver
    ];
  } // extraInputs)
