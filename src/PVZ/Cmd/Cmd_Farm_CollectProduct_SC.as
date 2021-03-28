package PVZ.Cmd
{
   import com.tencent.protobuf.Message;
   import com.tencent.protobuf.ReadUtils;
   import com.tencent.protobuf.WireType;
   import com.tencent.protobuf.WriteUtils;
   import com.tencent.protobuf.WritingBuffer;
   import com.tencent.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.tencent.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final class Cmd_Farm_CollectProduct_SC extends Message
   {
      
      public static const $MessageID:String = "PVZ.Cmd.Cmd_Farm_CollectProduct_SC";
      
      public static const BLOCK:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("PVZ.Cmd.Cmd_Farm_CollectProduct_SC.block","block",1 << 3 | WireType.LENGTH_DELIMITED,Dto_Farm_BlockInfo);
      
      public static const ITEMS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("PVZ.Cmd.Cmd_Farm_CollectProduct_SC.items","items",2 << 3 | WireType.LENGTH_DELIMITED,Dto_ItemInfo);
       
      
      private var block$field:Dto_Farm_BlockInfo;
      
      public var items:Array;
      
      public function Cmd_Farm_CollectProduct_SC()
      {
         this.items = [];
         super();
      }
      
      override public function get $messageID() : String
      {
         return Cmd_Farm_CollectProduct_SC.$MessageID;
      }
      
      public function clearBlock() : void
      {
         this.block$field = null;
      }
      
      public function get hasBlock() : Boolean
      {
         return this.block$field != null;
      }
      
      public function set block(param1:Dto_Farm_BlockInfo) : void
      {
         this.block$field = param1;
      }
      
      public function get block() : Dto_Farm_BlockInfo
      {
         return this.block$field;
      }
      
      override public final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasBlock)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.block$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.items.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.items[_loc2_]);
            _loc2_++;
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
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
                     throw new IOError("Bad data format: Cmd_Farm_CollectProduct_SC.block cannot be set twice.");
                  }
                  _loc3_++;
                  this.block = new Dto_Farm_BlockInfo();
                  ReadUtils.read$TYPE_MESSAGE(param1,this.block);
                  break;
               case 2:
                  this.items.push(ReadUtils.read$TYPE_MESSAGE(param1,new Dto_ItemInfo()));
                  break;
               default:
                  super.readUnknown(param1,_loc4_);
                  break;
            }
         }
      }
   }
}
