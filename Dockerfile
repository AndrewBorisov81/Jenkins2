# Use Ubuntu as the base image
FROM ubuntu:20.04

# Set non-interactive mode for APT
ENV DEBIAN_FRONTEND=noninteractive

# Install required packages: build-essential for g++ and git
RUN apt-get update && \
    apt-get install -y build-essential git && \
    apt-get clean

# Create a working directory
WORKDIR /app

# Copy C++ source code into the container
COPY hello.cpp .

# Command to compile the C++ program
RUN g++ -o hello hello.cpp

# Default command to run the compiled application
CMD ["./hello"]

