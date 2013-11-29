package com.dc.deploy.app;

import java.text.SimpleDateFormat;
import java.util.Date;
import net.neoremind.sshxcute.core.Logger;
import com.dc.deploy.config.ConfigInfo;
import com.dc.deploy.config.IConfig;
import com.dc.ssh.SSHTool;
/**
 * 
 * <p>Title: Deploy</P>
 * <p>Description: ����</p>
 * <p>Copyright: Copyright (c) 2007</p>
 * <p>Company: DigitalChina Co.Ltd</p>
 * @auther chensga
 * @version 1.0
 * @since 2012-7-2
 * �޸��ˣ�
 * �޸�ʱ�䣺
 * �޸����ݣ�
 * �޸İ汾�ţ�
 */
public class AppDeploy extends BaseDeploy {

	public AppDeploy() {
		super();
	}
	public AppDeploy(ConfigInfo config) {
		super(config);
	}
	
	@Override
	public void deploy() {
		
		// ��ʼ��SHH����
		boolean sshIsOk = SSHTool.init(config.getIp(), config.getSshPort(), config.getSysUserName(), config.getSysPassword());
		if (!sshIsOk) {
			deployStatus="��" + config.getName() + "[ip: " + config.getIp()+ "��SSH��ʼ���쳣���˳�����";
			logger.putMsg(Logger.ERROR, deployStatus , true);
			
		}
		
		try {
			
			//ֹͣԭӦ��
			String[] processIds = SSHTool.shutdownApp(null, null, IConfig.app_name);
			deployStatus="��" + config.getName() + "[ip: " + config.getIp()+ "��ֹͣԭ�г��򣬽���id=" + SSHTool.arrayToString(processIds);
			logger.putMsg(Logger.INFO, deployStatus, true);
			deployStatus="��" + config.getName() + "[ip: " + config.getIp()+ "�����ڴ���ԭ�г��򱸷�...";
			logger.putMsg(Logger.INFO,deployStatus , true);
			// ��������
			bakApp();
			deployStatus="��" + config.getName() + "[ip: " + config.getIp()+ "�������ϴ����°汾����...";
			logger.putMsg(Logger.INFO, deployStatus, true);
			// �ϴ�
			SSHTool.upload(IConfig.server_upload_directory, IConfig.local_upload_directory
					+ IConfig.upload_fileName);
			deployStatus="��" + config.getName() + "[ip: " + config.getIp()+ "�����ڽ�ѹ���°汾����...";
			logger.putMsg(Logger.INFO, deployStatus, true);
			// ��ѹ
			SSHTool.unZip(IConfig.server_upload_directory + IConfig.upload_fileName, IConfig.server_upload_directory);
            deployStatus="��" + config.getName() + "[ip: " + config.getIp()+ "�����ڸ�Ȩ��...";
			logger.putMsg(Logger.INFO,deployStatus , true);
			// ��Ȩ��
			SSHTool.execCommand(" chmod +x "
					+ IConfig.server_upload_directory
					+ IConfig.app_start_directory + "*.*");
			deployStatus="��" + config.getName() + "[ip: " + config.getIp()+ "������ת���ļ�����...";
			logger.putMsg(Logger.INFO, deployStatus, true);
			// ת���ļ�����
			SSHTool.execCommand("dos2unix "
					+ IConfig.server_upload_directory
					+ IConfig.app_start_directory + "*.sh "
					+ IConfig.server_upload_directory
					+ IConfig.app_start_directory + "*.sh ");
			deployStatus="��" + config.getName() + "[ip: " + config.getIp()+ "��������������...";
			logger.putMsg(Logger.INFO,deployStatus , true);
			// ����ɨ�����
			processIds = SSHTool.startApp(IConfig.server_upload_directory
					+ IConfig.app_start_directory, IConfig.app_start_file, IConfig.app_name);
			deployStatus="��" + config.getName() + "[ip: " + config.getIp()+ "���ĳ������������������id=" + 
					SSHTool.arrayToString(processIds);
			logger.putMsg(Logger.INFO, deployStatus, true);
			
			if (null != IConfig.app_log_isOk_time && !"".equals(IConfig.app_log_isOk_time) 
					&& !"0".equals(IConfig.app_log_isOk_time)) {
				// ���ߣ������־�Ƿ��д���
				Thread.sleep(Long.parseLong(IConfig.app_log_isOk_time));
				String result = SSHTool.find(IConfig.app_log_directory, IConfig.app_log_isOk_keywords);
				if (null != result && !"".equals(result) && !"failed".equals(result)) {
					deployStatus = "��" + config.getName() + "[ip: " + config.getIp()+ "���ĳ��������������������󣬴�����־��Ϣ��" + result;
					logger.putMsg(Logger.INFO, deployStatus, true);
				} else {
					deployStatus = "��" + config.getName() + "[ip: " + config.getIp()+ "���ĳ���������������ִ�У�";
					logger.putMsg(Logger.INFO, deployStatus, true);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			deployStatus = "��" + config.getName() + "[ip: " + config.getIp()+ "���������쳣���쳣��Ϣ��" + e;
			logger.putMsg(Logger.INFO, deployStatus, true);
		} finally {
			// �ر�
			SSHTool.close();
		}
	}
	
	/**
	 * 
	 * <p>�������ƣ�bakApp</p>
	 * <p>��������������Ӧ��</p>
	 * @author chensga
	 * @since 2012-7-3
	 */
	public void bakApp() {
		boolean isSuccess = SSHTool.cd(IConfig.server_upload_directory + IConfig.app_name);
		if(isSuccess){
		    // ��������Ŀ¼
			isSuccess = SSHTool.mkdir(IConfig.bak_directory);
			// ������ɹ�����Ŀ¼�Ѵ���
			if (!isSuccess) {
				// ��鱸������ɾ�����౸��
				String[] fileList = SSHTool.getFileList(IConfig.bak_directory);
				if (fileList.length >= IConfig.int_server_max_bakapp_count) {
					for (int i = 0; i <= fileList.length - IConfig.int_server_max_bakapp_count; i++) {
						deployStatus = "��" + config.getName() + "[ip: " + config.getIp()+ "������ɾ�����౸��" + fileList[i];
						logger.putMsg(Logger.INFO, deployStatus, true);
						SSHTool.delete(IConfig.bak_directory, fileList[i]);
					}
				}
			}
			// ����
			SSHTool.cp(IConfig.server_upload_directory +  IConfig.app_name, 
					IConfig.bak_directory + IConfig.app_name + "_" + new SimpleDateFormat("yyyy-MM-dd_hh:mm:ss").format(new Date()));
			// ɾ��ԭ����
			SSHTool.delete(IConfig.server_upload_directory + IConfig.app_name, "/*");
		} else {
			// �����ϴ�Ŀ¼
			SSHTool.mkdir(IConfig.server_upload_directory);
		}
	}
}
