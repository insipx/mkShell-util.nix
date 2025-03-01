# make a shell with an environment for rust and wasm dev
{ twiggy
, binaryen
, wasm-pack
, wabt
, chromedriver
, google-chrome
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
      chromedriver
      google-chrome
      geckodriver
    ];
  } // extraInputs)
