## 🏎️ Lab CloudFormation

![Screenshot 2023-03-08 at 11 36 00](https://user-images.githubusercontent.com/43513994/223676888-cbfbc575-1642-4ac2-9b2a-bd40fea7e2da.png)

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

### 🧛🏻 Result


![Screenshot 2023-03-08 at 11 26 44](https://user-images.githubusercontent.com/43513994/223676287-5ce04696-81b8-4775-b221-2b478575d04c.png)

![Screenshot 2023-03-08 at 11 24 53](https://user-images.githubusercontent.com/43513994/223676259-61d70aa1-7e9b-4b54-a145-babf65a83615.png)
