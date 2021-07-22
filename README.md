# Campo Minado em Assembly 💣
---

Projeto final da dsiciplina de SCC0119 - Prática em Organização de Computadores. Consiste no jogo do campo minado feito em linguagem assembly do Processador do ICMC.

---

## Sobre

- Campo minado é um popular jogo de computador para um jogador. Foi inventado por Robert Donner em 1989 e tem como objectivo revelar um campo de minas sem que alguma seja detonada. Neste projeto, desenvolvemos um jogo de campo minado em linguagem assembly através da CPU do ICMC desenvolvida pelo professor Simões.

---

## Funcionalidades

- Neste projeto, tentamos desenvolver todas as funcionalidades que um jogo comum de campo minado apresenta. Temos as funções de inserção e remoção de bandeiras, contagem de bandeiras inseridas e **uma função recursiva responsável por revelar todos os campo adjacentes àqueles com valor 0**.

<html>
	 <img src="images/funcao_recursiva.gif" alt="nome"  width="600px">
</html>
<br>
<br>

- Além disso, temos 3 opções de dificuldades para desafiar os jogadores. Já aviso que o terceiro nível é quase impossível!

---

## Tutorial

Para jogar é preciso apenas utilizar o teclado!

- As teclas **WASD** são utilizadas para a movimentação do ponteiro;
- A tecla **K** é utilizada para revelar quadrados
- A tecla **L** é utilizada para a inserção e remoção de bandeiras

---

## Ferramentas auxiliares

### Grid da tela do simulador

- Feito no inkscape, mostra todas as posições da interface gráfica do simulador. Foi utilizado para facilitar a visualização das posições para a exibição de texto e imagens.
<html>
	 <img src="images/grid_cpu_simoes.PNG" alt="nome"  width="800px">
</html>
<br>
<br>

## Grid do campo minado

- Também feito no inkscape, mostra todas as posições do campo minado para facilitar o posicionamento das bombas e numeração dos campos.
<html>
	 <img src="images/grid_campo_minado.PNG" alt="nome"  width="800px">
</html>
<br>
<br>

---

## Fotos

- Menu Inicial
<html>
	 <img src="images/Menu.PNG" alt="nome"  width="800px">
</html>
<br>
<br>

- Tela de jogo - Nível Fácil
<html>
	 <img src="images/Tela_inicial_easy.PNG" alt="nome"  width="800px">
</html>
<br>
<br>

- Tela de jogo - Nível Fácil
<html>
	 <img src="images/mid_game.PNG" alt="nome"  width="800px">
</html>
<br>
<br>

- Tela de Vitória 1 - Nível Fácil
<html>
	 <img src="images/victory1.PNG" alt="nome"  width="800px">
</html>
<br>
<br>

- Tela de Vitória 2 - Nível Fácil
<html>
	 <img src="images/victory2.PNG" alt="nome"  width="800px">
</html>
<br>
<br>

- Tela de Derrota 1 - Nível Fácil
<html>
	 <img src="images/game_over1.PNG" alt="nome"  width="800px">
</html>
<br>
<br>

- Tela de Derrota 2 - Nível Fácil
<html>
	 <img src="images/game_over2.PNG" alt="nome"  width="800px">
</html>
<br>
<br>

---

## O que aprendemos

- Durante o desenvolvimento deste projeto aprendemos a desenvolver, do começo, meio e fim, um projeto funcional utilizando a linguagem Assembly.

- Pudemos também exercitar os conceitos de Stack e a montagem de uma GUI utilizando uma linguagem de baixo nível.

- Por fim, pudemos também aprofundar os conhecimentos sobre funções recursivas e seu correto funcionamento.

---

## Membros
* 11796444 - Giovanni Shibaki
* 11796441 - Pedro Muramatsu 
* 11796472 - Lucas Mihara

---

## Agradecimentos

- Gostariamos de agradecer ao professor Simões pela acessoria durante o desenvolvimento do projeto e também por todas as aulas ministradas para a matéria de Prática em Organização de Computadores durante o primeiro semestre de 2021.

- Agradecemos também a todos os colegas dos anos passados da disciplina, que disponibilizaram seus projetos na plataforma GitHub e nos permitiu um melhor entendimento das instruções presentes na CPU do ICMC.
