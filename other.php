$arr = array('\'text'\', 12, TRUE, $foo, 23.911);
define("PI", 3.14);

echo next($arr)."  ". "index: ".key($arr)."<br>"; //$arr[1]
reset($arr);
  echo current($arr)." obecny <br>"; // $arr[0]
 
$foo = (integer) end($arr); //$foo = 23
echo $foo. "<br>";


foreach ($arr as &$value) {
  echo gettype($value), "<br>";
  settype($value, "integer");
  echo $value   . " ";
}

$foo += PI;
echo $foo." foo + PI<br>";
$foo -= $arr[1] ** 2 + (6.12 / 2) ;// 26.14 - (144 + (3.06))

echo $foo. "<br>";

$site = "google.com";
fopen($site,"r")
or die("Unable to connect to $site");