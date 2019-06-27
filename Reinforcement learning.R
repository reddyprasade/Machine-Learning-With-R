# Teaching the child to walk - MDPtoolbox package
# Installing and loading the package
#install.packages("MDPtoolbox")

library(MDPtoolbox)

# 1. Defining the Set of Actions - Left, Right, Up and Down for 2*2 matrix
# Remember! This will be a probability matrix, so we will use the matrix() function such that the sum of probabilities in each row is 1

# Up Action
up=matrix(c( 1, 0, 0, 0,
             0.7, 0.2, 0.1, 0,
             0, 0.1, 0.2, 0.7,
             0, 0, 0, 1),
          nrow=4,ncol=4,byrow=TRUE)

# Down Action
down=matrix(c(0.3, 0.7, 0, 0,
              0, 0.9, 0.1, 0,
              0, 0.1, 0.9, 0,
              0, 0, 0.7, 0.3),
            nrow=4,ncol=4,byrow=TRUE)

# Left Action
left=matrix(c( 0.9, 0.1, 0, 0,
               0.1, 0.9, 0, 0,
               0, 0.7, 0.2, 0.1,
               0, 0, 0.1, 0.9),
            nrow=4,ncol=4,byrow=TRUE)

# Right Action
right=matrix(c( 0.9, 0.1, 0, 0,
                0.1, 0.2, 0.7, 0,
                0, 0, 0.9, 0.1,
                0, 0, 0.1, 0.9),
             nrow=4,ncol=4,byrow=TRUE)

# Combined Actions matrix
Actions=list(up=up, down=down, left=left, right=right)

# 2. Defining the rewards and penalties
Rewards=matrix(c( -1, -1, -1, -1,
                  -1, -1, -1, -1,
                  -1, -1, -1, -1,
                  10, 10, 10, 10),
               nrow=4,ncol=4,byrow=TRUE)

# 3. Solving the navigation
solver=mdp_policy_iteration(Actions, Rewards, 0.1)

# 4. Getting the policy
solver$policy #2 4 1 1
names(Actions)[solver$policy] #"down"  "right" "up" "up"

# 5. Getting the Values at each step. These values can be different in each run
solver$V #58.25663  69.09102  83.19292 100.00000

# 6. Additional information: Number of iterations
solver$iter #2

# 7. Additional information: Time taken. This time can be different in each run
solver$time #Time difference of 0.009523869 secs

# Getting into rough games - ReinforcementLearning github package
# install.packages("devtools")

library(devtools)

# Option 1: download and install latest version from GitHub
#install_github("nproellochs/ReinforcementLearning")
library(ReinforcementLearning)

# Viewing the pre-built function for each state, action and reward
print(gridworldEnvironment)

# Define names for state and action
states <- c("s1", "s2", "s3", "s4")
actions <- c("up", "down", "left", "right")

# Generate 1000 iterations
sequences <- sampleExperience(N = 1000, env = gridworldEnvironment, states = states, actions = actions)
print(sequences)
# Solve the problem
solver_rl <- ReinforcementLearning(sequences, s = "State", a = "Action", r = "Reward", s_new = "NextState")

# Getting the policy; this may be different for each run
solver_rl$Policy

# Getting the Reward; this may be different for each run
solver_rl$Reward #-351

# Conclusion: Adapting to the changing environment
# Load dataset
data("tictactoe")

# Perform reinforcement learning on tictactoe data
model_tic_tac <- ReinforcementLearning(tictactoe, s = "State", a = "Action", r = "Reward", s_new = "NextState", iter = 1)

# Optimal policy; this may be different for each run
model_tic_tac$Policy #This will print a very large matrix of the possible step in each state

# Reward; this may be different for each run
model_tic_tac$Reward #5449

