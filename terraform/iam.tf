resource "aws_ecr_repository_policy" "e-shop-repo-policy" {
  repository = aws_ecr_repository.eshop-repo.name

  policy = jsonencode(

    {
      "Version" : "2008-10-17",
      "Statement" : [
        {
          "Sid" : "Add full ECR access to our repo",
          "Effect" : "Allow",
          "Principal" : {
            "AWS" : "*"
          },
          "Action" : [
            "ecr:GetDownloadUrlForLayer",
            "ecr:BatchGetImage",
            "ecr:BatchCheckLayerAvailability",
            "ecr:PutImage",
            "ecr:InitiateLayerUpload",
            "ecr:UploadLayerPart",
            "ecr:CompleteLayerUpload"
          ]
        }
      ]
    }
  )
}
