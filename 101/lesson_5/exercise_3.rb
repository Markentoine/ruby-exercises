arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
p arr1[2][1].last
arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
p arr2[1].values[0][0]
arr3 = [['abc'], ['def'], {third: ['ghi']}]
p arr3[2].values[0][0][0]
hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
p hsh1['b'].last
hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
p hsh2[:third].key(0)
