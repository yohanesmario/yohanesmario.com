---
title: "Whirlpool - The Galaxy Inspired Hash Function"
date: 2011-08-19T14:16:00+0700
draft: false
tags: ["cryptography", "php"]
---

I've been trying to make my own hashing function for this blog, with no luck at all. So, I try to find the latest hashing function which known to be super secure, and I encounter "whirlpool". This hashing function is and never will be patented, so it's free to use. In addition to the randomized multilevel encryption process which I have been adding since the early development of this blog, I add the whirlpool function to the mix.

Here's my multilevel encryption process which contain the whirlpool algorithm:

```php
$password=$encrypted;
//the $encrypted var comes from my hand made encryption algorithm

$formation=hash("whirlpool", $password);
$array=array("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l",
    "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z");

$formation=str_replace($array, "", $formation);
$i=0;
$sementara="";
while($formation[$i] || $formation[$i]=="0")
{
    $a=decbin($formation[$i]);
    while(strlen($a)<4)
    {
        $a="0".$a;
    }
    $sementara=$sementara.$a;
    $i=$i+1;
}
$formation=$sementara;
$encrypted_password=$password;
$i=0;
while ($formation[$i] || $formation[$i]=="0")
{
    if (intval($formation[$i])==0)
    {
        $encrypted_password=md5($encrypted_password).sha1($encrypted_password);
        $encrypted_password=hash("whirlpool", $encrypted_password);
    }
    else if (intval($formation[$i])==1)
    {
        $encrypted_password=sha1($encrypted_password).md5($encrypted_password);
        $encrypted_password=hash("whirlpool", $encrypted_password);
    }
    $i=$i+1;
}
```

As you can see, in each level of the encryption process, there's 3 different hash functions to be executed (md5, sha1, and whirlpool). An average password will have at least 300 level of encryption. So a password cracker will have to go through at least 900 hash function executions to brute force the password, and that's only for one word. Even a super computer will be exhausted to crack it.

For more info about whirlpool, please go [here](http://www.larc.usp.br/~pbarreto/WhirlpoolPage.html). Happy blogging!