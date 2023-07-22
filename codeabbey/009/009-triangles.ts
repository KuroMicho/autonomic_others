import * as readline from "readline";

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

function checkValidity(testCases: number, sequences: number[][]): number[] {
  const results: number[] = [];

  for (let i = 0; i < testCases; i++) {
    if (sequences[i] !== undefined) {
      const [a, b, c] = sequences[i];
      if (a + b <= c || a + c <= b || b + c <= a) {
        results.push(0);
      } else {
        results.push(1);
      }
    }
  }

  return results;
}

function parseInput(lines: string[]): [number, number[][]] {
  const testCases: number = parseInt(lines[0]);
  const sequences: number[][] = lines
    .slice(1)
    .map((line) => line.split(" ").map(Number));
  return [testCases, sequences];
}

const lines: string[] = [];

rl.on("line", (input) => {
  lines.push(input);
});

rl.on("close", () => {
  const [testCases, sequences] = parseInput(lines);
  const results = checkValidity(testCases, sequences);
  console.log(results.join(" "));
});
