#!/usr/bin/perl -w

# Interpreter for the Xigxag automaton.
# May 15 2007 Chris Pressey, Cat's Eye Technologies.
# This work is part of the public domain.

$prg = $ARGV[0];

$i = 0;
while(1)
{
  $n = length $prg;
  print "Generation $i (length $n)\n"; $i++;
  print "$prg\n";
  <STDIN>;

  $p = "";
  for($j=0;$j<length($prg);$j++)
  {
    $pe = substr($prg, $j, 1);
    if ($pe eq '>')
    {
      $c = substr($prg, $j+1);
    }
    elsif ($pe eq '<')
    {
      $c = substr($prg, 0, $j);
    } else {
      die 'Illegal symbol ' . $pe;
    }
    $p .= $c;
  }
  $prg = $p;
}
