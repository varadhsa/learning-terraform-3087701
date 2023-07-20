module "dev" {
    source = "../modules/blog"

    asg_min_size = 0
    asg_max_size = 0
}