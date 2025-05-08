# Simulador de Conversão de Vendas

Aplicativo Streamlit para simulação e predição de conversão de vendas, desenvolvido como parte do Case Ifood.

## Funcionalidades

- Previsão de conversão de vendas com base em modelo treinado
- Upload de arquivos CSV para predições em lote
- Entrada manual de dados para predições individuais
- Análise visual dos resultados com gráficos comparativos
- Ajuste de threshold via slider ou linguagem natural

## Como executar localmente

```bash
# Instalar dependências
pip install -r requirements.txt

# Executar o aplicativo
streamlit run app.py
```

## Deploy no Streamlit Cloud

1. Crie uma conta no GitHub (se ainda não tiver uma)
2. Faça fork deste repositório para sua conta GitHub:
   - Acesse o repositório no GitHub
   - Clique no botão "Fork" no canto superior direito

3. Acesse o [Streamlit Cloud](https://streamlit.io/cloud) e cadastre-se:
   - Clique em "Sign up"
   - Selecione a opção para se cadastrar com GitHub
   - Autorize o acesso do Streamlit ao seu GitHub

4. Crie um novo app:
   - Na página principal do Streamlit Cloud, clique em "New app"
   - Em "Repository", selecione o fork que você acabou de criar
   - Em "Branch", selecione "main"
   - Em "Main file path", digite "app.py"
   - Clique em "Deploy!"

5. Aguarde o deploy ser concluído. Em alguns minutos, seu app estará disponível em uma URL pública.

## Solução de problemas

- **Erro ao carregar o modelo**: Verifique se o arquivo `pickle/pickle_rf_pycaret2` foi corretamente enviado ao GitHub
- **Erro com dependências**: O arquivo `requirements.txt` já está configurado com as versões corretas das bibliotecas
- **Erro de memória**: Se o app falhar por falta de memória, considere otimizar o tamanho do modelo ou solicitar um upgrade no Streamlit Cloud

## Estrutura do projeto

- `app.py`: Aplicativo principal Streamlit
- `pickle/`: Contém o modelo salvo
- `images/`: Imagens usadas no aplicativo
- `requirements.txt`: Dependências do projeto
- `.streamlit/config.toml`: Configurações do Streamlit
- `runtime.txt`: Especifica a versão do Python para o deploy