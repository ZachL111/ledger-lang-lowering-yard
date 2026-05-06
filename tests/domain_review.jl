include("../src/DomainReview.jl")
using .DomainReview

item = ReviewItem(56, 51, 30, 94)
@assert score(item) == 167
@assert lane(item) == "ship"
