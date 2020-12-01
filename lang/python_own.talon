mode: user.python
mode: command
and code.language: python
-

self assign <user.text>:
    result = user.formatted_text(text, "SNAKE_CASE") 
    insert("self.{result} = {result}")
    key(enter)
key [word] pass <user.text>: 
    result = user.formatted_text(text, "SNAKE_CASE") 
    insert("{result}={result}")
self [dot] <user.text>:
    result = user.formatted_text(text, "SNAKE_CASE") 
    insert("self.{result}")

dot <user.text>:
    result = user.formatted_text(text, "SNAKE_CASE") 
    insert(".{result}")
    
return <user.text>:
    result = user.formatted_text(text, "SNAKE_CASE") 
    insert("return {result}")
    
jupyter auto reload: "%load_ext autoreload\n%autoreload 2\n"


# none: "None"
is none: "is None"
is not none: "is not None"
return: "return "
self dot: "self."


# matplotlib
figure subplots: 
    "fig, ax = plt.subplots()"
    key(left)
ax plot: 
    "ax.plot()"
    key(left)
ax scatter:
    "ax.scatter()"
    key(left)
ax legend: "ax.legend()"
ax set title:
    "ax.set_title()"
    key(left)
ax set [x | ex] label: 
    "ax.set_xlabel()"
    key(left)
ax set [y | why] label: 
    "ax.set_ylabel()"
    key(left)
ax set [y | why] [limit | lim]:
    "ax.set_ylim()"
    key(left)

# numpy
numpy dot: insert("np.")
numpy nan: "np.NAN"
numpy float: "np.float"
numpy all: 
    insert("np.all()")
    key("left")
numpy any: 
    insert("np.any()")
    key("left") 
numpy log: 
    "np.log()"
    key("left")
numpy exponential:
    "np.exp()"
    key(left)
numpy array: 
    "np.array()"
    key("left")
numpy a range: 
    "np.arange()"
    key("left")
numpy lin space: 
    "np.linspace()"
    key("left")
numpy random: "np.random."
numpy random seed:
    "np.random.seed()"
    key("left")
numpy random uniform: 
    "np.random.uniform()"
    key("left")
numpy random normal: 
    "np.random.normal()"
    key("left")
numpy random multivariate normal: 
    "np.random.multivariate_normal()"
    key("left")
numpy random choice: 
    "np.random.choice()"
    key("left")
numpy sum: 
    "np.sum()"
    key("left")
numpy mean: 
    "np.mean()"
    key("left")
numpy standard [deviation]: 
    "np.std()"
    key("left")
numpy abs: 
    "np.abs()"
    key("left")
numpy square root: 
    "np.sqrt()"
    key("left")
numpy zeros: 
    "np.zeros()"
    key("left")
numpy ones: 
    "np.ones()"
    key("left")
numpy zeros like: 
    "np.zeros_like()"
    key("left")
numpy ones like: 
    "np.ones_like()"
    key("left")
numpy stack: 
    "np.stack()"
    key("left")
numpy concatenate: 
    "np.concatenate()"
    key("left")
numpy sort: 
    "np.sort()"
    key("left")
numpy [arg | arc] sort: 
    "np.argsort()"
    key("left")
numpy max: 
    "np.max()"
    key("left")
numpy [arg | arc] max: 
    "np.argmax()"
    key("left")
numpy min: 
    "np.min()"
    key("left")
numpy [arg | arc] min: 
    "np.argmin()"
    key("left")
numpy is close: 
    "np.isclose()"
    key("left")
numpy squeeze:
    "np.squeeze()"
    key(left)
    
    
# Tensorflow
tf keras: "tf.keras."
tf math: "tf.math."
tf random [set] seed: 
    "tf.random.set_seed()"
    key("left")
    
tf reduce sum: 
    "tf.reduce_sum()"
    key("left")
tf reduce mean: 
    "tf.reduce_mean()"
    key("left")
tf reduce standard [deviation]: 
    "tf.math.reduce_std()"
    key("left")

tfd normal: 
    "tfd.Normal()"
    key("left")
    
    
# import statements
import numpy: "import numpy as np\n"
import matplotlib: "import matplotlib.pyplot as plt\n"
import seaborn: "import seaborn as sns\n"
import scipy: "import scipy as scp\n"
from scipy import stats: "from scipy import stats\n"
import pandas: "import pandas as pd\n"
import tensorflow: "import tensorflow as tf"
import tensorflow probability: "import tensorflow_probability as tfp\n\ntfd = tfp.distributions\n"
import path [lip]: "from pathlib import Path\n"