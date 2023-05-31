# main.tf

variable "cluster_name" {
  description = "The name of the ScyllaDB cluster."
  type        = string
}

variable "num_nodes" {
  description = "The number of ScyllaDB nodes in the cluster."
  type        = number
  default     = 3
}

resource "aws_instance" "scylladb_node" {
  count         = var.num_nodes
  ami           = "ami-0c55b159cbfafe1f0"  # Replace with the appropriate AMI for your AWS region and instance type
  instance_type = "t2.medium"              # Replace with the desired instance type
  key_name      = "my-key-pair"            # Replace with your key pair name
  security_group_ids = [aws_security_group.scylladb.id]
  tags = {
    Name = "${var.cluster_name}-node-${count.index + 1}"
  }
}

resource "aws_security_group" "scylladb" {
  name        = "${var.cluster_name}-security-group"
  description = "Security group for ScyllaDB cluster"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 7000
    to_port     = 7000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Add more ingress rules as needed for ScyllaDB ports (e.g., 9042 for CQL)

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
