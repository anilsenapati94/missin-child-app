import hashlib
import MySQLdb
from flask import session
from sklearn.preprocessing import LabelBinarizer
from sklearn.model_selection import train_test_split
from imutils import paths
import matplotlib.pyplot as plt
import numpy as np
import cv2
import os
 
#from keras.models import load_model
# global graph, model, output_list
 
import numpy as np
import base64
import warnings
from tensorflow.keras.preprocessing.image import ImageDataGenerator
from tensorflow.keras.applications import VGG16
from tensorflow.keras.layers import AveragePooling2D
from tensorflow.keras.layers import Dropout
from tensorflow.keras.layers import Flatten
from tensorflow.keras.layers import Dense
from tensorflow.keras.layers import Input
from tensorflow.keras.models import Model
from tensorflow.keras.optimizers import Adam
from tensorflow.keras.utils import to_categorical
from sklearn.preprocessing import LabelBinarizer
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report
from sklearn.metrics import confusion_matrix
from imutils import paths
import matplotlib.pyplot as plt
import numpy as np
import argparse
import cv2
import os
from tensorflow.keras.preprocessing import image
from tensorflow.keras.preprocessing.image import ImageDataGenerator
from tensorflow.keras.models import load_model
from tensorflow.keras.preprocessing import image
import numpy as np
from tensorflow.keras.preprocessing.image import load_img, img_to_array
from tensorflow.keras.models import load_model
from tensorflow.keras.preprocessing import image
import numpy as np
warnings.filterwarnings("ignore") 
 
 
 

def db_connect():
    _conn = MySQLdb.connect(host="localhost", user="root",
                            passwd="root", db="crimedb")
    c = _conn.cursor()

    return c, _conn

# -------------------------------register-----------------------------------------------------------------
def user_reg(id,username, password, email, mobile, address,):
    try:
        c, conn = db_connect()
        print(id,username, password, email,
               mobile, address)
        j = c.execute("insert into register (id,username,password,email,mobile,address) values ('"+id+"','"+username +
                      "','"+password+"','"+email+"','"+mobile+"','"+address+"')")
        conn.commit()
        conn.close()
        print(j)
        return j
    except Exception as e:
        print(e)
        return(str(e))
#----------------------------------npa reg---------------

def npa_reg(id,username, password, email, mobile, address,):
    try:
        c, conn = db_connect()
        print(id,username, password, email,
               mobile, address)
        j = c.execute("insert into authregister (id,username,password,email,mobile,address) values ('"+id+"','"+username +
                      "','"+password+"','"+email+"','"+mobile+"','"+address+"')")
        conn.commit()
        conn.close()
        print(j)
        return j
    except Exception as e:
        print(e)
        return(str(e))
#-----------------------------------------npa log-----------
def npa_loginact(username, password):
    try:
        c, conn = db_connect()
        j = c.execute("select * from authregister where username='" +
                      username+"' and password='"+password+"'")
        data = c.fetchall()
        print(data)
        for a in data:
           session['uname'] = a[0]
       
        c.fetchall()
        conn.close()
        return j
    except Exception as e:
        return(str(e))
# -------------------------------------Login --------------------------------------
def user_loginact(username, password):
    try:
        c, conn = db_connect()
        j = c.execute("select * from register where username='" +
                      username+"' and password='"+password+"'")
        data = c.fetchall()
        print(data)
        for a in data:
           session['uname'] = a[0]
       
        c.fetchall()
        conn.close()
        return j
    except Exception as e:
        return(str(e))
#-------------------------------------Upload Image------------------------------------------
def user_upload(id,name,city,landmark,remark, image):
    try:
        c, conn = db_connect()
        print(name,city,landmark,remark,image)
        username = session['username']
        X="insert into upload (id,name,city,landmark,remark, image,username) values ('"+id+"','"+name+"','"+city+"','"+landmark+"','"+remark+"','"+image +"','"+username +"')"
        print(X)
        j = c.execute("insert into upload (id,name,city,landmark,remark, image,username) values ('"+id+"','"+name+"','"+city+"','"+landmark+"','"+remark+"','"+image +"','"+username +"')")
        conn.commit()
        conn.close()
        print(j)
        return j
    except Exception as e:
        print(e)
        return(str(e))

#---------------------------------------View Images---------------------------------------
def user_viewimages(username):
    c, conn = db_connect()
    c.execute("select * from upload where  username='"+username +"'")
    result = c.fetchall()
    conn.close()
    print("result")
    return result

#------------------------------------Track----------------------------------------------------
def v_image(name):
    c, conn = db_connect()
    c.execute("Select * From images where name='"+name+"'")
    result = c.fetchall()
    conn.close()
    print("result")
    return result
# ----------------------------------------------Update Items------------------------------------------

def image_info(image_path):
    classes = {0:"hari",1:"radha",2:"raju"}
    
    img_width, img_height = 224,224

    # load the model we saved
    model = load_model('Missing.h5')
    # predicting images
    image = load_img(image_path,target_size=(224,224))
    image = img_to_array(image)
    image = image/255
    image = np.expand_dims(image,axis=0)
    result = np.argmax(model.predict(image))
    print(result)

    prediction = classes[result]
    print(prediction) 
    return prediction


#---------------------------------------View Images---------------------------------------
def show_images(username):
    c, conn = db_connect()
    c.execute("select * from upload ;")
    result = c.fetchall()
    conn.close()
    print("result")
    return result
#------------------------------------------------------
def search_db(image):
    c, conn = db_connect()
    c.execute("Select * From upload where image='"+image+"'")
    result = c.fetchall()
    conn.close()
    print("result")
    return result
#--------------------------------------------------------------
def inbox_upload(name,city,landmark,remark,image):
    try:
        c, conn = db_connect()
        print(name,city,landmark,remark,image,'------db')

        username = session['username']
        X="insert into inbox (,name,city,landmark,remark, image,username) values ('"+name+"','"+city+"','"+landmark+"','"+remark+"','"+image +"','"+username +"')"
        print(X)
        j = c.execute("insert into inbox (name,city,landmark,remark, image,username) values ('"+name+"','"+city+"','"+landmark+"','"+remark+"','"+image +"','"+username +"')")
        conn.commit()
        conn.close()
        print(j)
        return j
    except Exception as e:
        print(e)
        return(str(e))

#-----------------------------------inbox msg------------
def inbox_images(useername):
    c, conn = db_connect()
    c.execute("select * from inbox ;")
    result = c.fetchall()
    conn.close()
    print("result")
    return result








if __name__ == "__main__":
    print(db_connect())
