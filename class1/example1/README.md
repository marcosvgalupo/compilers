# Example 1

<p>In this example, we developed a code with flex that count lines, chars and words from a text file</p>
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
    <code>./[filename] < test.txt</code>
  </li>
</ol>