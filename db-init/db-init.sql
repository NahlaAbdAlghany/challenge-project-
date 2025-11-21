-- Create votes table
CREATE TABLE IF NOT EXISTS votes (
    id VARCHAR(255) NOT NULL UNIQUE,
    vote VARCHAR(255) NOT NULL
);

-- Create index for better performance
CREATE INDEX IF NOT EXISTS idx_vote ON votes(vote);