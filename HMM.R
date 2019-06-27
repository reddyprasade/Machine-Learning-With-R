library(HMM)
# # Initialise HMM
# hmm = initHMM(c("A","B"), c("L","R"), transProbs=matrix(c(.8,.2,.2,.8),2),
#               emissionProbs=matrix(c(.6,.4,.4,.6),2))
# print(hmm)
# # Sequence of observations
# observations = c("L","L","R","R")
# # Calculate backward probablities
# logBackwardProbabilities = backward(hmm,observations)
# print(exp(logBackwardProbabilities))

# Initial HMM
# hmm = initHMM(c("A","B"),c("L","R"),
#               transProbs=matrix(c(.9,.1,.1,.9),2),
#               emissionProbs=matrix(c(.5,.51,.5,.49),2))
# print(hmm)
# # Sequence of observation
# a = sample(c(rep("L",100),rep("R",300)))
# print(a)
# b = sample(c(rep("L",300),rep("R",100)))
# observation = c(a,b)
# print(observation)
# # Baum-Welch
# bw = baumWelch(hmm,observation,10)
# print(bw$hmm)

# Initialise HMM
hmm = initHMM(c("A","B"), c("L","R"), transProbs=matrix(c(.8,.2,.2,.8),2),
              emissionProbs=matrix(c(.6,.4,.4,.6),2))
print(hmm)
# Sequence of observations
observations = c("L","L","R","R")
# Calculate forward probablities
logForwardProbabilities = forward(hmm,observations)
print(exp(logForwardProbabilities))
