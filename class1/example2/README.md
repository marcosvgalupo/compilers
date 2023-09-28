# Example 2

<p>In this example, we developed a flex code that identifies reserved words, identifiers, arithmetic operators, relational operators, special characters and numbers in the language developed by my college (based on Portugol).</p>
<p>Usage: </p>
<ol>
  <li>
    Generate C file:<br>
    <code>flex -t [filename].l > [filename].c</code>
  </li>
  <br>
  <li>
    Compile C file: <br>
    <code>gcc [filename].c -o [filename]</code>
  </li>
  <br>
  <li>
    Run: <br>
    <code>./[filename] < programa.simples</code>
  </li>
</ol>