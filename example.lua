-- example reporting script which demonstrates a custom
-- done() function that prints latency percentiles

done = function(summary, latency, requests)
   io.write("Latency percentiles:\n")
   for _, p in pairs({ 50, 90, 99 }) do
      n = (latency:percentile(p) + .0) / 1000
      io.write(string.format("  %g%% \t %.2fms\n", p, n))
   end
end
