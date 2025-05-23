# make a shell with an environment for rust and wasm dev
{ twiggy
, binaryen
, wasm-pack
, wabt
, geckodriver
, wasm-bindgen-cli
, mkShell
, extraInputs ? { }
, ...
}: (mkShell
  {
    buildInputs = [
      twiggy
      binaryen
      wasm-pack
      wasm-bindgen-cli
      wabt
      geckodriver
    ];
  } // extraInputs)
