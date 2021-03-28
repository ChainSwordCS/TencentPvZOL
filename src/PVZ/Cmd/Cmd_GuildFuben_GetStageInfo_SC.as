package PVZ.Cmd
{
   import com.tencent.protobuf.Message;
   import com.tencent.protobuf.ReadUtils;
   import com.tencent.protobuf.WireType;
   import com.tencent.protobuf.WriteUtils;
   import com.tencent.protobuf.WritingBuffer;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final class Cmd_GuildFuben_GetStageInfo_SC extends Message
   {
      
      public static const $MessageID:String = "PVZ.Cmd.Cmd_GuildFuben_GetStageInfo_SC";
      
      public static const STAGEINFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("PVZ.Cmd.Cmd_GuildFuben_GetStageInfo_SC.stageInfo","stageInfo",1 << 3 | WireType.LENGTH_DELIMITED,Dto_GuildFuben_StageInfo);
       
      
      private var stageInfo$field:Dto_GuildFuben_StageInfo;
      
      public function Cmd_GuildFuben_GetStageInfo_SC()
      {
         super();
      }
      
      override public function get $messageID() : String
      {
         return Cmd_GuildFuben_GetStageInfo_SC.$MessageID;
      }
      
      public function clearStageInfo() : void
      {
         this.stageInfo$field = null;
      }
      
      public function get hasStageInfo() : Boolean
      {
         return this.stageInfo$field != null;
      }
      
      public function set stageInfo(param1:Dto_GuildFuben_StageInfo) : void
      {
         this.stageInfo$field = param1;
      }
      
      public function get stageInfo() : Dto_GuildFuben_StageInfo
      {
         return this.stageInfo$field;
      }
      
      override public final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasStageInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.stageInfo$field);
         }
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
         }
      }
      
      override public final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         var _loc4_:uint = 0;
         var _loc3_:uint = 0;
         while(param1.bytesAvailable > param2)
         {
            _loc4_ = ReadUtils.read$TYPE_UINT32(param1);
            switch(_loc4_ >> 3)
            {
               case 1:
                  if(_loc3_ != 0)
                  {
                     throw new IOError("Bad data format: Cmd_GuildFuben_GetStageInfo_SC.stageInfo cannot be set twice.");
                  }
                  _loc3_++;
                  this.stageInfo = new Dto_GuildFuben_StageInfo();
                  ReadUtils.read$TYPE_MESSAGE(param1,this.stageInfo);
                  break;
               default:
                  super.readUnknown(param1,_loc4_);
                  break;
            }
         }
      }
   }
}
