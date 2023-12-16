# LLM-and-AppModerization

This comprehensive guide provides step-by-step instructions for configuring and running Llama2 on a MacBook. While tailored for macOS, the instructions are adaptable for Windows machines as well. 
The following is the sysem specification that I used for building this project, I do believe even a lower configuration might work just fine.

**System Specifications:**

- Device: MacBook Pro
- Processor: 2.6 GHz 6-Core Intel Core i7
- RAM: 32 GB 2667 MHz DDR4

Follow the outlined steps to seamlessly set up Llama2 on your local environment. You may be able to follow the instruction for both Mac or Windows machine,.

**Prerequisites**

1.  Install Python if it is not already installed. You need Python version 3.8 or higher. I am currently running version 3.11.6
   
  ```
      brew install python
   ```

2. upgrade pip3 to the latest version (pip3 enables the installation and management of third party software packages that are used in this project)

  ```
      python3 -m pip install --upgrade pip
  ```

3. Download this code repository (install git if it is not already setup, You can also downlod the zip file directly from the main page under code option as an alternate)

```
      brew install git
      git clone https://github.com/AhilanPonnusamy/LLM-and-AppModernization.git
```

4. Move to LLM-and-AppModernization folder

```
      cd LLM-and-AppModernization
```

5. Install all required packages from requirements.txt file
```
      python3 -m pip install -r requirements.txt
```

6. Create a new folder named 'models'
   
7. From the 'models' folder download 'llama-2-7b-chat.Q5_K_M.gguf.bin' file from **https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF/tree/main**, You can use wget or directly download the file from huggingface.

8. Move back to LLM-and-AppModernization folder

9. Start the backend business services
```
      python3 restservice.py
```
10. Open a new terminal window and from the LLM-and-AppModernization folder start the LLM applicatioin
```
     streamlit run app.py
```
    
