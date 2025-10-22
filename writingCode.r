dir.create("r_outputs", showWarnings = FALSE)
cat("Starting writingCode.r\n")

# Simple example: create a small data frame and save as CSV
df <- data.frame(x = 1:10, y = (1:10) ^ 2)
write.csv(df, file = file.path("r_outputs", "sample_data.csv"), row.names = FALSE)
cat("Wrote r_outputs/sample_data.csv\n")

# Create a basic plot and save as PNG
png(filename = file.path("r_outputs", "plot.png"), width = 600, height = 400)
plot(df$x, df$y, type = "b", col = "blue", pch = 19,
	main = "Sample plot", xlab = "x", ylab = "y = x^2")
dev.off()
cat("Wrote r_outputs/plot.png\n")

cat("Done.\n")