// import React, { useState } from 'react';
// import axios from 'axios';
// import './App.css';

// function App() {
//     const [selectedModel, setSelectedModel] = useState('');
//     const [sourceFile, setSourceFile] = useState(null);
//     const [targetFile, setTargetFile] = useState(null);

//     const handleSourceFileChange = (event) => {
//         setSourceFile(event.target.files[0]);
//     };

//     const handleTargetFileChange = (event) => {
//         setTargetFile(event.target.files[0]);
//     };

//     const handleModelChange = (e) => {
//         setSelectedModel(e.target.value);
//     };

//     const handleSubmit = async () => {
//         try {
//             const formData = new FormData();
//             formData.append('sourceFile', sourceFile);
//             formData.append('targetFile', targetFile);

//             const response = await axios.post('http://localhost:5000/convert', formData, {
//                 headers: {
//                     'Content-Type': 'multipart/form-data'
//                 }
//             });

//             console.log(response.data);
//         } catch (error) {
//             console.error('Error uploading file:', error);
//         }
//     };

//     return (
//         <div className="app">
//             <div className="container">
//                 <div className="box">
//                     <h2>Deepfake Generator</h2>
//                     <div className="input-group">
//                         <label>Select Model:</label>
//                         <select value={selectedModel} onChange={handleModelChange}>
//                             <option value="model1">Model 1</option>
//                             <option value="model2">Model 2</option>
//                             {/* Add more models as needed */}
//                         </select>
//                     </div>
//                     <div className="input-group">
//                         <label>Upload Source Voice File:</label>
//                         <input type="file" accept=".wav" onChange={handleSourceFileChange} />
//                     </div>
//                     <div className="input-group">
//                         <label>Upload Target Voice File:</label>
//                         <input type="file" accept=".wav" onChange={handleTargetFileChange} />
//                     </div>

//                     <button onClick={handleSubmit} disabled={!sourceFile || !targetFile}>Generate Deepfake</button>
//                 </div>
//             </div>
//         </div>
//     );
// }

// export default App;



import React, { useState } from 'react';
import axios from 'axios';
import './App.css';

function App() {
    const [selectedModel, setSelectedModel] = useState('');
    const [sourceFile, setSourceFile] = useState(null);
    const [targetFile, setTargetFile] = useState(null);
    const [showDownloadButton, setShowDownloadButton] = useState(false); // State for download button visibility

    const handleSourceFileChange = (event) => {
        setSourceFile(event.target.files[0]);
    };

    const handleTargetFileChange = (event) => {
        setTargetFile(event.target.files[0]);
    };

    const handleModelChange = (e) => {
        setSelectedModel(e.target.value);
    };

    const handleSubmit = async () => {
        try {
            const formData = new FormData();
            formData.append('sourceFile', sourceFile);
            formData.append('targetFile', targetFile);

            const response = await axios.post('http://localhost:5000/convert', formData, {
                headers: {
                    'Content-Type': 'multipart/form-data'
                }
            });

            console.log(response.data);

            // After successful response, show the download button
            setShowDownloadButton(true);
        } catch (error) {
            console.error('Error uploading file:', error);
        }
    };

    const handleDownload = () => {
        // Implement download functionality here
    };

    return (
        <div className="app">
            <div className="container">
                <div className="box">
                    <h2>Deepfake Generator</h2>
                    <div className="input-group">
                        <label>Select Model:</label>
                        <select value={selectedModel} onChange={handleModelChange}>
                            <option value="model1">Model 1</option>
                            <option value="model2">Model 2</option>
                            {/* Add more models as needed */}
                        </select>
                    </div>
                    <div className="input-group">
                        <label>Upload Source Voice File:</label>
                        <input type="file" accept=".wav" onChange={handleSourceFileChange} />
                    </div>
                    <div className="input-group">
                        <label>Upload Target Voice File:</label>
                        <input type="file" accept=".wav" onChange={handleTargetFileChange} />
                    </div>

                    <button onClick={handleSubmit} disabled={!sourceFile || !targetFile}>Generate Deepfake</button>
                    
                    {/* Render download button if showDownloadButton is true */}
                    {showDownloadButton && (
                        <button onClick={handleDownload}>Download Output</button>
                    )}
                </div>
            </div>
        </div>
    );
}

export default App;
