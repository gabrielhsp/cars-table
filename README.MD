# Cars Table List
This is an app that render a list of cars using a JSON static file as reference.

The structure of the JSON is the following:

```
{
  "carros": [
    {
      "nome": "F430",
      "fabrica": "Ferrari",
      "cor": "vermelho",
      "imagem": "ferrari"
    },
    {
      "nome": "Veyron",
      "fabrica": "Buggati",
      "cor": "azul",
      "imagem": "veyron"
    },
    {
      "nome": "Etios",
      "fabrica": "Toytota",
      "cor": "branco",
      "imagem": "etios"
    },
    {
      "nome": "TTS",
      "fabrica": "Audi",
      "cor": "laranja",
      "imagem": "tts"
    },
    {
      "nome": "Model S",
      "fabrica": "Tesla",
      "cor": "preto",
      "imagem": "modelS"
    }
    ]
}
```

Inside the view, we have the following informations:

- The name of the car;
- The manufacturer information;
- The color of the car;
- The image of the car.

Each car element must have a color passed by an enumerator that references to the color inside the text

The link to the images that will be used inside assets it's the following:
- F430 = encurtador.com.br/mLY79
- Veyron = encurtador.com.br/pBKMN
- Etios = encurtador.com.br/biszG
- TTS = encurtador.com.br/anrJ0
- Model S = encurtador.com.br/dxS38
