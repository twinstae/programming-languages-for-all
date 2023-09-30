import readline from 'node:readline';

function factorial(n: number): number {
  let result = 1;
  for (let i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

new Promise<string>((resolve) => rl.question('enter a number:\n', resolve))
  .then((raw) => {
    const n = parseInt(raw);

    if (isNaN(n)) {
      throw Error('your input is not a valid number');
    }
    if (n < 0) {
      throw Error('your input is not a non-negative number');
    }

    return factorial(n);
  })
  .then(console.log)
  .catch(console.error)
  .finally(() => {
    rl.close();
  });
