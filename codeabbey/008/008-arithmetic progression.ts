import * as readline from "readline";

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

function arithmeticProgression(
  testCases: number,
  sequences: number[][]
): number[] {
  const results: number[] = [];

  for (let i = 0; i < testCases; i++) {
    if (sequences[i] !== undefined) {
      const [A, B, N] = sequences[i];
      let sum = 0;

      for (let j = 0; j < N; j++) {
        sum += A + j * B;
      }

      results.push(sum);
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
  const results = arithmeticProgression(testCases, sequences);
  console.log(results.join(" "));
});
