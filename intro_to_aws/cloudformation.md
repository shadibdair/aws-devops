## 🏎️ Lab CloudFormation

### 🐾 Steps

1- Create a CloudFormation stack named **cfnlab**

2- Update the CloudFormation Stack

*   Update the CloudFormation stack cfnlab using updatestack1.json to observe how resources are added and removed.

*   Update cfnlab again, replacing the current template with createstack.json to observe how resources are changed.

*   In a text editor, open the updatestack2.json template file and modify the characters 123 in catsareawesome123.
Save the file.

*   Update cfnlab again, replacing the current template with the modified updatestack2.json template.

3- Delete the CloudFormation stack you created, and observe how the resources are deleted.


### 👀 stack.json

1️⃣
```
{
    "Resources": {
        "catpics": {
            "Type": "AWS::S3::Bucket"
        }
    }
}
```

2️⃣
```
{
    "Resources": {
        "catpics": {
            "Type": "AWS::S3::Bucket"
        },
        "dogpics": {
            "Type": "AWS::S3::Bucket"
        }
    }
}
```

3️⃣
```
{
    "Resources": {
        "catpics": {
            "Type": "AWS::S3::Bucket",
            "Properties": {
                "BucketName": "catsareawesome-991"
            }
        },
        "dogpics": {
            "Type": "AWS::S3::Bucket"
        }
    }
}
```