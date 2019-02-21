//user pool id us-east-2_XF6kGbMOv
//client id vckbmv88fv1r8g9nod9kep932


import * as AWS from 'aws-sdk/global';
import { CognitoUserPool, CognitoUserAttribute, CognitoUser } from 'amazon-cognito-identity-js';
    
    //This should register the user with the application
    var poolData = {
        UserPoolId : 'us-east-2_XF6kGbMOv', // Your user pool id here
        ClientId : 'vckbmv88fv1r8g9nod9kep932' // Your client id here
    };
    var userPool = new CognitoUserPool(poolData);

    var attributeList = [];

    var dataEmail = {
        Name : 'email',
        Value : 'email@mydomain.com'
    };

    var attributeEmail = new CognitoUserAttribute(dataEmail);

    attributeList.push(attributeEmail);

    userPool.signUp('username', 'password', attributeList, null, function(err, result){
        if (err) {
            alert(err.message || JSON.stringify(err));
            return;
        }
        var cognitoUser = result.user;
        console.log('user name is ' + cognitoUser.getUsername());
    });