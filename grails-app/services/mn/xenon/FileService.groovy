package mn.xenon

import grails.transaction.Transactional
import mn.xenon.util.ImageUtil
import org.apache.commons.io.FileUtils
import org.apache.commons.io.FilenameUtils
import org.bson.types.ObjectId
import org.springframework.web.multipart.MultipartFile

@Transactional
class FileService {

    def grailsApplication

    def void saveImg(MultipartFile mf,fName) {
        mf.transferTo(new File("${grailsApplication.config.systemFile}${fName}"))
    }

    def void saveFile(MultipartFile mf,fName) {
        mf.transferTo(new File("${grailsApplication.config.systemFile}${fName}"))
    }

    def void saveImg(byte[] bytes,String fName) {
        FileUtils.writeByteArrayToFile(new File("${grailsApplication.config.systemFile}${fName}"), bytes);
    }


    def remove(def fName){
        def file = new File("${grailsApplication.config.systemFile}${fName}")
        if(file.exists()){
            return file.delete()
        }

    }

    def getFile(String fName){
        return new File("${grailsApplication.config.systemFile}${fName}")
    }

    def upload(MultipartFile mf, Integer width = 0, Integer height = 0) {
        String fName = "${new ObjectId().toString()}.${FilenameUtils.getExtension(mf.originalFilename)}"

        if (mf.contentType.startsWith("image")) {
            if (width != height) {
                def realData = new ImageUtil()
                realData.load(mf.bytes)
                if(realData.width > width && realData.height > height){
                    realData.thumbnailSpecial(width,height)
                    saveImg(realData.getBytes(),fName)
                }else{
                    saveImg(mf,fName)
                }
            }else{
                saveImg(mf,fName)
            }
        }else{
            saveFile(mf,fName)
        }
        return fName
    }

    def merge(def params , def old , def fields = ['profileImage','pageImage']){
        fields.each{ field ->
            if(!params[field] || (old[field] && !old[field].toString().equals(params[field])))
                remove(old[field])
        }
    }

    def deleteFromInstance(def old, def fields = ['profileImage','pageImage']){
        fields.each{ field ->
            if(old[field])
                remove(old[field])
        }
    }

}
