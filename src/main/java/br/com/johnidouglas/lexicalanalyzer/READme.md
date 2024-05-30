 <img src="https://github.com/S4-2024/lexicalanalyzer/blob/main/src/main/java/br/com/johnidouglas/lexicalanalyzer/banner1.png ">
 
[![  -  Conteúdo](https://img.shields.io/badge/_-_Conteúdo-pink?style=for-the-badge)](https://johnidm.gitbooks.io/compiladores-para-humanos/content/part1/structure-of-a-compiler.html)

<h2> Construindo o primeiro analisador léxico com JFlex </h2>

<p> JFlex é um gerador de analisador léxico escrito em Java. Ele recebe como entrada uma especificação baseada em um conjunto de expressões regulares e gera um algoritmo que lê os caracteres descritos no arquivo arquivo fonte combinando com os padrões definidos na especificação. </p>
<br> 


<details>
 <summary>  Generator </summary>

```
package br.com.johnidouglas.lexicalanalyzer;

import java.io.File;
import java.nio.file.Paths;

public class Generator {

    public static void main(String[] args) {

        String rootPath = Paths.get("").toAbsolutePath(). toString();
        String subPath = "/src/main/java/br/com/johnidouglas/lexicalanalyzer/";

        String file = rootPath + subPath + "language.lex";

        File sourceCode = new File(file);

        jflex.Main.generate(sourceCode);

    }
}

```


 
</details>

[![Typing SVG](https://readme-typing-svg.demolab.com?font=Fira+Code&duration=5047&pause=2000&color=F711E6&random=false&width=435&lines=%E2%99%A1+working+on+it+%E2%99%A1)](https://git.io/typing-svg)

