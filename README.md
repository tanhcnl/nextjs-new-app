# Next.js New App

This is a [Next.js](https://nextjs.org/) project bootstrapped with a custom template.

## Getting Started

First, install the dependencies:

```bash
npm install
# or
yarn
# or
pnpm install
```

Then, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `src/app/page.tsx`. The page auto-updates as you edit the file.

## Infrastructure as Code with Terraform

This project includes Terraform configurations to deploy the infrastructure needed for hosting the Next.js application. The infrastructure includes:

- S3 bucket for static website hosting
- CloudFront distribution for content delivery
- Appropriate IAM policies and permissions

### GitHub Actions Pipeline

The repository includes a GitHub Actions workflow that automates the deployment of infrastructure using Terraform. The pipeline consists of three stages:

1. **Checkout Code**: Pulls the latest code from the repository
2. **Terraform Plan**: Runs `terraform plan` to preview changes and requires approval before proceeding
3. **Terraform Apply**: Applies the approved Terraform plan to deploy or update infrastructure

### Required Secrets

To use the Terraform deployment pipeline, you need to set up the following secrets in your GitHub repository:

- `AWS_ACCESS_KEY_ID`: AWS access key with permissions to create resources
- `AWS_SECRET_ACCESS_KEY`: Corresponding AWS secret key
- `AWS_REGION`: AWS region to deploy resources (e.g., us-east-1)
- `TF_API_TOKEN`: Terraform Cloud API token (if using Terraform Cloud)

### Manual Deployment

If you prefer to deploy manually, you can run the following commands:

```bash
cd terraform
terraform init
terraform plan
terraform apply
```

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new) from the creators of Next.js.