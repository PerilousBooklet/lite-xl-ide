import std.stdio, std.array, std.algorithm;

void main()
{
    stdin
        .byLineCopy
        .array
        .sort!((a, b) => a > b) // descending order
        .each!writeln;
}
